<template>
  <div>
    <Table
      :data="tableData6"
      :span-method="objectSpanMethod"
      border
      style="width: 100%; margin-top: 20px">
      <TableColumn
        prop="id"
        label="ID"
        width="180"/>
      <TableColumn
        prop="name"
        label="Name"/>
      <TableColumn
        prop="amount1"
        label="Amount 1"/>
      <TableColumn
        prop="amount2"
        label="Amount 2"/>
      <TableColumn
        prop="amount3"
        label="Amount 3"/>
    </Table>
  </div>
</template>

<script>
import { Table, TableColumn } from 'element-ui';

export default {
  components: {
    Table, TableColumn
  },
  data () {
    return {
      tableData6: [ {
        id: '12987122',
        name: 'Tom',
        amount1: '234',
        amount2: '3.2',
        amount3: 10
      }, {
        id: '12987123',
        name: 'Tom',
        amount1: '165',
        amount2: '4.43',
        amount3: 12
      }, {
        id: '12987124',
        name: 'Tom',
        amount1: '324',
        amount2: '1.9',
        amount3: 9
      }, {
        id: '12987125',
        name: 'Tom',
        amount1: '621',
        amount2: '2.2',
        amount3: 17
      }, {
        id: '12987126',
        name: 'Tom',
        amount1: '539',
        amount2: '4.1',
        amount3: 15
      } ]
    };
  },
  methods: {
    objectSpanMethod ({ row, column, rowIndex, columnIndex }) {
      if (columnIndex === 0) {
        if (rowIndex % 2 === 0) {
          return {
            rowspan: 2,
            colspan: 1
          };
        } else {
          return {
            rowspan: 0,
            colspan: 0
          };
        }
      }
    }
  }
};
</script>
